import axios, { Axios, AxiosPromise, AxiosResponse } from "axios"

interface HasId {
    id: number;
}

export class Sync<T extends HasId> {
    constructor(public rootUrl: string) {}

    fetch(id: number): AxiosPromise {
        return axios.get(`${this.rootUrl}/${id}`);
    }

    save(data: T): AxiosPromise {
        const { id } = data

        if (id) {
            // put
            return axios.put(`${this.rootUrl}/${id}`, data)
        } else {
            // post
            return axios.post(this.rootUrl, data)
        }
    }
}